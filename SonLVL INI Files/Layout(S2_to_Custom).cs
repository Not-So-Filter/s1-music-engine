using System;
using System.Collections.Generic;

namespace SonicRetro.SonLVL.API.S3K
{
	public class Layout : LayoutFormatCombined
	{
		public override void ReadLayout(byte[] rawdata, LayoutData layout)
		{
			layout.FGLayout = new ushort[DefaultSize.Width, DefaultSize.Height];
			layout.BGLayout = new ushort[DefaultSize.Width, DefaultSize.Height];
			int c = 0;
			for (int lr = 0; lr < DefaultSize.Height; lr++)
			{
				for (int lc = 0; lc < DefaultSize.Width; lc++)
					layout.FGLayout[lc, lr] = rawdata[c++];
				for (int lc = 0; lc < DefaultSize.Width; lc++)
					layout.BGLayout[lc, lr] = rawdata[c++];
			}
		}

		public override void WriteLayout(LayoutData layout, out byte[] rawdata)
		{
			List<byte> tmp = new List<byte>();
			ushort fgw = (ushort)layout.FGLayout.GetLength(0);
			ushort bgw = (ushort)layout.BGLayout.GetLength(0);
			ushort fgh = (ushort)layout.FGLayout.GetLength(1);
			ushort bgh = (ushort)layout.BGLayout.GetLength(1);
			tmp.AddRange(ByteConverter.GetBytes(fgw));
			tmp.AddRange(ByteConverter.GetBytes(bgw));
			tmp.AddRange(ByteConverter.GetBytes(fgh));
			tmp.AddRange(ByteConverter.GetBytes(bgh));
			for (int la = 0; la < MaxSize.Height; la++)
			{
				if (la < fgh)
					tmp.AddRange(ByteConverter.GetBytes((ushort)(0x80 + (la * fgw))));
				else
					tmp.AddRange(new byte[2]);
				if (la < bgh)
					tmp.AddRange(ByteConverter.GetBytes((ushort)(0x80 + (fgh * fgw) + (la * bgw))));
				else
					tmp.AddRange(new byte[2]);
			}
			for (int y = 0; y < fgh; y++)
				for (int x = 0; x < fgw; x++)
					tmp.Add((byte)layout.FGLayout[x, y]);
			for (int y = 0; y < bgh; y++)
				for (int x = 0; x < bgw; x++)
					tmp.Add((byte)layout.BGLayout[x, y]);
			rawdata = tmp.ToArray();
		}

		public override bool IsResizable { get { return true; } }

		public override System.Drawing.Size MaxSize { get { return new System.Drawing.Size(200, 32); } }

		public override System.Drawing.Size DefaultSize { get { return new System.Drawing.Size(128, 16); } }


		//public override int MaxBytes => 3960;
    }
}

import { type PageProps } from "$fresh/server.ts";
export default function App({ Component }: PageProps) {
  return (
    <html>
      <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Way to Future Moments (FmWay)" />
        {/* Facebook Meta Tags */}
        <meta property="og:url" content="https://fmway.me" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="FmWay" />
        <meta property="og:description" content="Way to Future Moments (FmWay)" />
        <meta property="og:image" content="/images/artoo-small.png" />
  
        {/* Twitter Meta Tags */}
        <meta name="twitter:card" content="summary_large_image" />
        <meta property="twitter:domain" content="fmway.me" />
        <meta property="twitter:url" content="https://fmway.me" />
        <meta name="twitter:title" content="FmWay" />
        <meta name="twitter:description" content="Way to Future Moments (FmWay)" />
        <meta name="twitter:image" content="/images/artoo-small.png" />
        <title>Halaman ekpresi luisadha</title>
        <link rel="stylesheet" href="/styles.css" />
      </head>
      <body>
        <Component />
      </body>
    </html>
  );
}

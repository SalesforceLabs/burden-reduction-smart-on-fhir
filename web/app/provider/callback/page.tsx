import { redirect } from 'next/navigation';

export default function ProviderCallbackBridge({
  searchParams
}: {
  searchParams: { [key: string]: string | string[] | undefined };
}) {
  const qp = new URLSearchParams();
  for (const [k, v] of Object.entries(searchParams || {})) {
    if (Array.isArray(v)) {
      v.forEach(val => qp.append(k, val));
    } else if (typeof v === 'string') {
      qp.set(k, v);
    }
  }
  redirect(`/api/oauth/provider/callback?${qp.toString()}`);
}



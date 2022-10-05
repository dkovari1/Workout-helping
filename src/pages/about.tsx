import type { NextPage } from "next";
import Head from "next/head";
import Link from "next/link";
import { trpc } from "../utils/trpc";

const About: NextPage = () => {
    // const hello = trpc.useQuery(["example.hello", { text: "from tRPC" }]);

    return (
        <>
            <Head>
                <title>About</title>
                <meta name="description" content="Generated by create-t3-app" />
                <link rel="icon" href="/favicon.ico" />
            </Head>
            <main >
                <Link href={"/"}>
                    INDEX
                </Link>
            </main>
        </>
    );
};

export default About;
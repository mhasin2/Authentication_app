import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'spash_screen.dart';
import 'signup_screen.dart';
import 'dart:math';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/header.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  left: 298,
                  top: 71,
                  right: 44,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Container(
                      color: Colors.white,
                      height: 20,
                      width: 10,
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                "Sign In To Continue",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  height: 30,
                  "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJkAAACcCAMAAABbT/k7AAABLFBMVEX////qQzU0qFNChfT7vAXw9f4WdPPz9/74+v5KifU/g/T7ugD7uAD/vQDqOyvqQTPpNyYlpEn98vH86unpMB38wQD//fkYokItpk7rV0z7tAA0f/T8yF0jePNXs23u9/DZ7N31tLDsX1X4ysfoJAnrT0OGrPd6wIpkl/Vqun0Anzn74eD0q6f51NLxkIr2vLnym5bwh4DtZ1795bj+8dn8zXD7vSb93J77xEb91Iz936j/+Oz80nvX4vzI2Pueu/mazqVOqk/H48212r2MyJlErV/udm75u2XweCvziCTpNTj4qRvrTzTuYS31mSLwcwuwyPl3ovb+7MmbrinsuxZ8rkfcuCC5tDCTsD/mxmiTwsc8nJ47o3tBiec/jtUzqzs/mbBAk8Y0pWU/oZG1yTPBAAAIMklEQVR4nO2bWXvaRhiFhZAdzKIFFEvYRggQYLPYQJzUbUpC2JpmaZ2lbdo6cdL+///QGbFJIGkWjYCLnhvfSHpezvfNmUUyx4XUca7ZrpQ63WmvXI0BVfO9abfTumo3c9mwzw6hZutyWo6plirLoihJEiCTJFEUZVW1xPy026rsgC7XbPVsIpvHQxBRltXYZTu3Razs1WXZUkVvpDVA2Yp1W9uBy1amwAwfpzzhRFnKlyKHa3bylkiAtSitJXYrUXJVejG8InrAyWL+KqIBkS2VKexyGSdF0nGlskxpl9O4aos111XeCmGXg00Vmda0OaVtLy+2XpMVV7ZjMeOCEq0um3ar5FWWXFBqnkGE5LrsCrmSZHXDdlubvWEzqeV2KLBO+KTwk6iW6LmyXTZR4S1J7dKCNWNydFxQco+u2a5IFhSUaFWaZitFDwaaLUYeHx11C2DAtTxpQS+3AyaKpLNBN6IUWwejcGw7YDFSx7YFViV1rBNxjC3BSB0rRRn8DrAYqWOVbeQYbH5Sx3JbApNIHcvmqRcXkiT5HSVsghE7xnUput8+wXAJtfkjd4xrWaRYoqpWp5edq3Yzm81yWXhoBU+I1KCVMHnAcm3sctiSRNmqdgDTxoNy7dLUUn2sEyXiUmbLRE2mitNW0I+vTKtesy+FY0TZL6lWB7m4arbEDTYxRr7drOCDSWq+dYz10FLezUY+JYFa9rBrKasd7FbJllTHeBerFBv0Dq5lojwl+t257nIHRj4lwftxA0MlXyGXqjM0ioDlsDMW7MUonp7twUmPImCBKniHdpLYoXg4Z+8r6Bzj8NpflKmPSq4s4hWsrQpWl4nlEMdLFbp7f5JeocFkiiwKq0cp4SUSTe5tnYvjztKC8DMCjWa+C63rE0EQHr5+EwhW3T4Xxz1OCRDt5K2/bRLFRBxe10+EmR6+9AWzwh0RUuq7tLBA+yXmHbgqZcCG0/FNSliinbzxqqg43QXYrP9X8ogPSd3m69OVfky7yB5uxkeYw94weiK4BeLDzSZO8davrPU+JayjrcWHupNxyXHfp9fJYEWdYNSn4+H09GbDMzs+lq5J4i4yFujawzKIll40m7yTKAP6wZtMENKz+NjNtATlWUxHs+0oZIH8LINor2OvYruZMDnfNpujnbwVy7vJMuds7s32K/OPBXDllWYuvSd42AErJcA647HvALCVuiEoZuL0kJFqfjm7UvpHAssSR3E2SgKya0QtT0iKmThKMiI7PwgempCMZGQyJXsfTJa6IQBjRxY/7fvPTRRtxpCs0EeFRvoRGRkjsHjhGYcIDVIyZtW85c6CyYhyliXZ84CVBlTq5npvyZ7uiKzGBdcydUa00GBHlnzHmowRWARkzDw7/5+MWHtLBjzb09TAINtR0gIyxrMTIzCYGns6owMyxKZuZ2uN2r6uHMGMvq+r7ds93aHEC7d7uquDq+393AnDHQrb0wN2edZne+LCbid8dIA6pcoIH0ZReIb4CcnzB4iTvczH33SDoJwPcHVQCCarwacFkGV+f8HzDROfDFv9YDIQtFzACXIm8wcPpNQjIHt+Gkx2Cy/ym58ywid+JpM92Xlwn5324UU+jZZ58mIOpgyYg/URQ+XUvso7a2eVnKOZrMlug4sJ1o22PBItk/m0AuO1MWOwxDtEmz2fXbf5FhGEBe+UZrIl6x8GF7PQn1+4/ubVDgunWA9PhGXx+MH8Qvfb6oyzxRamEUwEaPXjiJFZS8yvdL3hX4WFy7UiQ7IawrJFm7m/ish8fOEBxrSefVQt4/3ltatZ3aOSzEMNkbJgul9du/j6xh0Wa61mMgJDZJmzmNzii6X1sHBrwqbV+sglXKHvuNweAxth4ZZuMCFDLi7ttdlKZ6lM5kMQF2w1I7xrqPSPL9YZSz1Ke4bFGtpFaDJUYAAd9d23/BlYSVau1YIXjLZltbV7hg0MMuBaKDTEetHWYX/9LkPBQdN1k5orgVHK+On5xn1DHYeM13naKfQA3fyQ7NnmnXUs03hdGVNV9NkRDljyPLF5axGr04C0yZCYq/jXIdYmueBhGccNNEw0Xa8T2jY0tL+TGGjJI8/biwZeqwEpyoCAzaw3dP7+7jO6nF5dZv8yvE6bsU1wR0KxrtvPVf75gkqz5DuPLrOFXU9YUk0bmGis4UVjWYn7r4iKFg58n4NfTyiNrwcbNxwbmvOJyt1pENpG/DtkEpFB4xrGyPRquaI5qjcaytrztMkX/2aDH2n4a4QbHQ44xaiPR8MFX7FoDgfjC0PRvLpW0b8V/GzzToylMPPWDacrS2mzP7qv+dq/PjunoFraP5ms1SjkEx/BtbTR1nuDuRTeo9mSyeBaQmFO7SGk33/dGKOFWyQYzSgglnK31myoJptrTDEKSNHcE8IpsskWaARzAS2a/m3VbMkkJthWXOPvl/GRjG+ssHfq2io+Npf+QSKZ3GmlaHZF/ZY+u0TTFRAfh4RgIDwij1wg7e4zMRiM3OjRdLojpuIk6iGqTKjA4EI52ulAC7HlH0TYbLo2DvOBv2lENUYV6t3+XMW6FoltimGGA+PgNpb9QNB5Jm+MiuMGY7YG7ZjcZGNaUg17F42jodFgxKZoJCcPOBoZLBJE4UlPazB0PArtm6aNTeZctoYXPL1xijJhXUenzIFBNVB1TauPIv6frqJZB3tyIud0RY/ULgfcaGxomDmiKw2+jnGexQ7OHBkaPL/w57OPO7TJeLgVt9wyR+O6wWsNF6IOiTRN442L8cDc1b8LctA8czga1C8MYwK5JhPDqI8Ho6FpFkNR/Qf2ojK2H73hagAAAABJRU5ErkJggg==",
                ),
                Image.network(
                    height: 30,
                    "data:image/jpeg;base64,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"),
                Image.network(
                    height: 30,
                    "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAH0AAAB9CAMAAAC4XpwXAAAAYFBMVEUDqfT///8Ap/QApfQAo/MAofP7/v/w+f4An/P2/P/p9v7d8f1TufbT7Pzj8/2b1PmT0fm/5PuHzPhvwvc1s/Wj2Pp8yPjN6fwnrvW23/thvfar2/pCt/VDsvVLtvZ6w/dxeYf2AAAE/klEQVRoge2b2bKjIBCGsUETt7gQjUt03v8txy3noIKyqHMx+S+mplKWH003TQt9kPUvhb70L/1L/9K/dFU5fhLR4P18vqu0DG9X0t1X2iCMARBCAN1/CloKBuDeDqa7WUswmgtIkXqcR6OmiA6lZ4ggnjDO3cWjcf/ovZ7Tk5IzTEm9iqXZzATYGfPkIyXDMIHO6FX3a6LHdlK+3R+RarLrllRDVPT0nKXX3QsAPXTgXiU2fEIVYYd+5QWGz0/2i6HfivEpDfij2YP3dkW0mAVl4TD0aJw7XKlbjoBPnAvPnyJDLEx0t/n8ShXhLkjBV4OxGHryMykkV6MHevCapdPfd2AlfLQd7QJB23nMdye6MxuXAv61H3A8FWFIuyF4iPMSBd+3WvOOnoUNfYiP9GxuAmmXyVGgWmveGQ1voQsThuywL7cwQsNk+3M5gYBKGdP1vP4D8Uc6xwaSOrv01aCV1K26kc57C3n6O/DH3QhOrQ16VxrE2/TYxHRonE16N7zt4KuMJr7fdEe6cICQi/dc14SNB7dOMS9+CsWitR/a+nAY6xi0O4cEMj7dINXgqYga6dHmwiUk5c1/qr3a4RNOIz3ZiR8M1WvlgFwz6AD9xPJI93ZfBKSJw/kA/ujR8fO3dJ72d5m9CpMmZWdAjw6UyaFIKYKwjao4cU3oLTt9E92THzvYNgRpmYTLjVFOAYeuGEL9J6JeNcm13QrNNkt5NQ6HviowTqO7K7rjWJ5B3lSir2xP7/fqlpnWaHJa+T2xh1JKvNWcSk8Hl4NZiSgpWK249KKAG+jVkq73NaQnnK78fiGdZEu6f9FiG+ivJd290O/YX9I1v8G1VHgr+oVBHzgrukl1qiaYnw0Iv+PO0TzkJ3p81f5q+xy6f5XjC4dDt+g1xi/c/qE/LoEjUnPp1s4570G63/j0W3OB6+Fp8elWeIHxePk9+ns+H5+Ph+XHKHM3Qc/GQ2uJ6VZ1Mp6sTuFYunuy9cXqemx+J3XqupsXVRy6Vd/PW3hkff43p/vO7bRKY5lll/SwAAji4CQ6x/QZvT92hbO2G+Ad+jP0/cMbE9m8U1/W9jMrHOBetbF045uGLTr3xHWWbZr9t2iKs9aXdKs8zfh1mlvTDc+8xVrWNHy6d85644fcij4cYxwvLGorWHY+nFHZi+ad03dxfG09PyzZpjvH48VtN5yeE3qs78lGMwev4yU6Ek8iMZzfb7PVv6IoTLeuNPndPh7VPIFeCprN22xRr1HYkiP4eLvRS9zplAS28fzPT6hU6N38x61tdsu817u00+XlmVR5ePcOf5PuJCY7vjjBytDdujXZ7yXgYvojFTTMycJlWie4dCeMkelHzU608+nu41VXxlX9TtsAQ0/SNKqTTmWW5tXQlmmG7uCBZJciKgnGmAzCB4AHuHSvEjr+LogIugV49MPZu40yLP3gaziZJiGGbkXouFIKN1ILjaFbXn5MsCEAYX+KmG5ZfmC2l42yWwWPM/SOT1c90Ioigdqks/Qur+cGCQ5Iq9WGzGTaR9zoBQBAkKhEOpfeN8BXyukOMFC5pL5H7+TVgS1fTwK2n/XuXwjI0zs55R8kMwIgJMgM0Hx6PwA/owUQoRcAE2hz0Z8lmNJ73R5JXDUFwuTT3tL9C8M+2FRx8lBMLIr0QY4Xvsoop1Xwfr7fQUXjOgkPAcvQT9aX/qV/6V/6/0D/C4CHQOxzgzz3AAAAAElFTkSuQmCC"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "_______________________________________OR___________________________________________",
              ),
            ),
            TextField(
              inputFormatters: [],
              decoration: InputDecoration(
                  hintText: "Email ID",
                  labelText: "Email ID",
                  border: OutlineInputBorder()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                child: TextField(
                  inputFormatters: [],
                  decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 45,
                width: 400,
                child: Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
                  ),
                ),
                color: Colors.blue,
              ),
            ),
//
            Container(
              height: 150,
              width: double.infinity,
              child: Image.asset(
                "assets/footer.png",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

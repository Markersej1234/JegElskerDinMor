package DomæneObjekter;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class KontoTest
{

    Konto konto = new Konto("navn", "1", 100);

    @Test
    void insert()
    {

        assertEquals(200, konto.insert(100));
    }

    @Test
    void insertNegativ()
    {
        assertEquals(100, konto.insert(-100));

    }

    @Test
    void hæv()
    {

        assertEquals(0, konto.hæv(100));


    }

    @Test
    void hævNegativ()
    {

        assertEquals(100, konto.hæv(-150));

    }

    @Test
    void hævOver()
    {

        assertEquals(100, konto.hæv(1200));

    }
}
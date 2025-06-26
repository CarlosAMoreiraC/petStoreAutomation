package co.com.petstore.runners;

import com.intuit.karate.junit5.Karate;

public class FeatureRunner {

    @Karate.Test
    Karate testFlujoCompleto() {
        return Karate.run(
                "classpath:features/anadirMascota.feature",
                "classpath:features/obtenerMascotaPorEstado.feature",
                "classpath:features/obtenerMascotaPorId.feature",
                "classpath:features/actualizarMascota.feature"
        ).relativeTo(getClass());
    }

}

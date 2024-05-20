package org.wildfly.demo;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/celestial-bodies")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class CelestialBodyResource {

    @PersistenceContext
    private EntityManager em;

    @GET
    public Response getAll() {
        return Response.ok("Sun, Moon, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Pluto")
                .build();
    }
}

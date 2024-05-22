package org.wildfly.demo.cbodies;

import java.util.List;

import jakarta.inject.Inject;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/celestial-bodies")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class CelestialBodyResource {

    @Inject
    private CelestialBodyRepository repository;

    @GET
    public List<CelestialBody> findAll() {
        return repository.findAll();
    }

    @GET
    @Path("/{id}")
    public CelestialBody find(@PathParam("id") Long id) {
        return repository.find(id);
    }

    @POST
    public Response save(CelestialBody celestialBody) {
        repository.save(celestialBody);
        return Response.status(Response.Status.CREATED).build();
    }

    @PUT
    @Path("/{id}")
    public Response update(@PathParam("id") Long id, CelestialBody celestialBody) {
        repository.update(celestialBody);
        return Response.ok().build();
    }

    @DELETE
    @Path("/{id}")
    public Response delete(@PathParam("id") Long id) {
        repository.delete(id);
        return Response.noContent().build();
    }
}

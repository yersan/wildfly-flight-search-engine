package org.wildfly.demo.cbodies;

import java.util.List;

import jakarta.enterprise.context.RequestScoped;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@RequestScoped
@Transactional
public class CelestialBodyRepository {
    @PersistenceContext
    private EntityManager em;

    public CelestialBody find(Long id) {
        return em.find(CelestialBody.class, id);
    }

    public List<CelestialBody> findAll() {
        return em.createQuery("select c FROM CelestialBody c", CelestialBody.class).getResultList();
    }

    public void save(CelestialBody celestialBody) {
        em.persist(celestialBody);
    }

    public void update(CelestialBody celestialBody) {
        em.merge(celestialBody);
    }

    public void delete(Long id) {
        CelestialBody celestialBody = find(id);
        if (celestialBody != null) {
            em.remove(celestialBody);
        }
    }
}

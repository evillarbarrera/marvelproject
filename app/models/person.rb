class Person < ApplicationRecord

    def self.actualizarpuntos
        Person.update(person_id: id, name: name ,surname: surname, address: address, mail: mail,
            point: point, won_fight: won, lost_fight: lost );
    end

end

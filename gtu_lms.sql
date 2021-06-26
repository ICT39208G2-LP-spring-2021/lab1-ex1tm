SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `students` (
  `Id` int(4) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `PersonalNumber` bigint(11) NOT NULL,
  `UserId` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `students` (`Id`, `FirstName`, `LastName`, `PersonalNumber`, `UserId`) VALUES
(1, 'ANDRO', 'MAISURADZE', 30107077990, 3094),
(2, 'BARBARE', 'GELASHVILI', 11061467421, 7233),
(3, 'DAVITI', 'KAPANADZE', 33627163366, 8868),
(4, 'EKATERINE', 'BERIDZE', 45074279792, 3232),
(5, 'GIORGI', 'TABATADZE', 96766035084, 9510);

CREATE TABLE `users` (
  `Id` int(4) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`Id`, `UserName`, `Email`, `Password`) VALUES
(3094, 'maisura', 'a.maisuradze@testmail.gtu.ge', 'Bdx3zJh6'),
(3232, 'ekuna', 'e.beridze@testmail.gtu.ge', '6nFGJXGR'),
(7233, 'gelashvilib', 'b.gelashvili@testmail.gtu.ge', 'tnLd6Wo56'),
(8868, 'kapana', 'd.kapanadze@testmail.gtu.ge', 'zDA4kO9i'),
(9510, 'tabata', 'g.tabatadze@testmail.gtu.ge', 'o7E38h1x');

ALTER TABLE `students`
  ADD PRIMARY KEY (`Id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

ALTER TABLE `students`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `users`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9511;
COMMIT;
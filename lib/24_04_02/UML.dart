@startuml

package "Model" {
  class Book {
    -title: String
    -author: String
    -isbn: String
    -publicationYear: int
  }

  class Member {
    -name: String
    -contactNumber: String
    -email: String
    -memberId: int
  }

  class Rent {
    -book: Book
    -member: Member
    -rentDate: DateTime
    -dueDate: DateTime
    -isExtended: boolean
  }
}

package "Repository" {
  interface BookRepository {
    +addBook(Book): void
    +deleteBook(String): void
    +findBookByIsbn(String): Book?
    +getAllBooks(): List<Book>
    +updateBook(Book): void
  }

  interface MemberRepository {
    +addMember(Member): void
    +deleteMember(int): void
    +findMemberById(int): Member?
    +getAllMembers(): List<Member>
    +updateMember(Member): void
  }

  interface RentRepository {
    +addRent(Rent): void
    +extendRent(int, String): boolean
    +getAllRents(): List<Rent>
    +getRentsByMemberId(int): List<Rent>
    +getRentsSortedByDueDate(): List<Rent>
  }

  class BookRepositoryImplement implements BookRepository {
  }

  class MemberRepositoryImplement implements MemberRepository {
  }

  class RentRepositoryImplement implements RentRepository {
  }
}

class LibraryManageSystem {
  +main(): void
}

LibraryManageSystem ..> "Model"
LibraryManageSystem ..> "Repository"

BookRepository <|.. BookRepositoryImplement
MemberRepository <|.. MemberRepositoryImplement
RentRepository <|.. RentRepositoryImplement

BookRepository ..> Book : uses
MemberRepository ..> Member : uses
RentRepository ..> Rent : uses

BookRepositoryImplement ..> Book : uses
MemberRepositoryImplement ..> Member : uses
RentRepositoryImplement ..> Rent : uses

@enduml

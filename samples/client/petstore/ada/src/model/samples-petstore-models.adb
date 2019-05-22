--  OpenAPI Petstore
--  This is a sample server Petstore server. For this sample, you can use the api key `special_key` to test the authorization filters.
--
--  OpenAPI spec version: 1.0.0
--  
--
--  NOTE: This package is auto generated by OpenAPI-Generator 4.0.0-SNAPSHOT.
--  https://openapi-generator.tech
--  Do not edit the class manually.


package body Samples.Petstore.Models is

   use Swagger.Streams;



   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ApiResponseType) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("code", Value.Code);
      Into.Write_Entity ("type", Value.P_Type);
      Into.Write_Entity ("message", Value.Message);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ApiResponseType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ApiResponseType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "code", Value.Code);
      Swagger.Streams.Deserialize (Object, "type", Value.P_Type);
      Swagger.Streams.Deserialize (Object, "message", Value.Message);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ApiResponseType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : ApiResponseType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in TagType) is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "id", Value.Id);
      Into.Write_Entity ("name", Value.Name);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in TagType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out TagType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "id", Value.Id);
      Swagger.Streams.Deserialize (Object, "name", Value.Name);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out TagType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : TagType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in CategoryType) is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "id", Value.Id);
      Into.Write_Entity ("name", Value.Name);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in CategoryType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out CategoryType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "id", Value.Id);
      Swagger.Streams.Deserialize (Object, "name", Value.Name);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out CategoryType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : CategoryType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PetType) is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "id", Value.Id);
      Serialize (Into, "category", Value.Category);
      Into.Write_Entity ("name", Value.Name);
      Serialize (Into, "photoUrls", Value.Photo_Urls);
      Serialize (Into, "tags", Value.Tags);
      Into.Write_Entity ("status", Value.Status);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PetType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PetType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "id", Value.Id);
      Swagger.Streams.Deserialize (Object, "category", Value.Category);
      Swagger.Streams.Deserialize (Object, "name", Value.Name);
      Swagger.Streams.Deserialize (Object, "photoUrls", Value.Photo_Urls);
      Swagger.Streams.Deserialize (Object, "tags", Value.Tags);
      Swagger.Streams.Deserialize (Object, "status", Value.Status);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PetType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : PetType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in UserType) is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "id", Value.Id);
      Into.Write_Entity ("username", Value.Username);
      Into.Write_Entity ("firstName", Value.First_Name);
      Into.Write_Entity ("lastName", Value.Last_Name);
      Into.Write_Entity ("email", Value.Email);
      Into.Write_Entity ("password", Value.Password);
      Into.Write_Entity ("phone", Value.Phone);
      Into.Write_Entity ("userStatus", Value.User_Status);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in UserType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out UserType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "id", Value.Id);
      Swagger.Streams.Deserialize (Object, "username", Value.Username);
      Swagger.Streams.Deserialize (Object, "firstName", Value.First_Name);
      Swagger.Streams.Deserialize (Object, "lastName", Value.Last_Name);
      Swagger.Streams.Deserialize (Object, "email", Value.Email);
      Swagger.Streams.Deserialize (Object, "password", Value.Password);
      Swagger.Streams.Deserialize (Object, "phone", Value.Phone);
      Swagger.Streams.Deserialize (Object, "userStatus", Value.User_Status);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out UserType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : UserType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderType) is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "id", Value.Id);
      Serialize (Into, "petId", Value.Pet_Id);
      Into.Write_Entity ("quantity", Value.Quantity);
      Into.Write_Entity ("shipDate", Value.Ship_Date);
      Into.Write_Entity ("status", Value.Status);
      Into.Write_Entity ("complete", Value.Complete);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "id", Value.Id);
      Swagger.Streams.Deserialize (Object, "petId", Value.Pet_Id);
      Swagger.Streams.Deserialize (Object, "quantity", Value.Quantity);
      Swagger.Streams.Deserialize (Object, "shipDate", Value.Ship_Date);
      Swagger.Streams.Deserialize (Object, "status", Value.Status);
      Swagger.Streams.Deserialize (Object, "complete", Value.Complete);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : OrderType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;



end Samples.Petstore.Models;
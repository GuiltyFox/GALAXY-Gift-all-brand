.class public Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;
.super Ljava/lang/Object;
.source "FriendWinnerModel.java"


# instance fields
.field private Address:Ljava/lang/String;

.field private BirthDate:I

.field private ContactNumber:Ljava/lang/String;

.field private Email:Ljava/lang/String;

.field private FirstName:Ljava/lang/String;

.field private Gender:Ljava/lang/String;

.field private LastName:Ljava/lang/String;

.field private Locale:Ljava/lang/String;

.field private ModifyDate:I

.field private Name:Ljava/lang/String;

.field private NotificationEnable:Z

.field private ShippingFirstName:Ljava/lang/String;

.field private ShippingLastName:Ljava/lang/String;

.field private ShippingName:Ljava/lang/String;

.field private UserId:Ljava/lang/String;

.field private Zipcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Address:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDate()I
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->BirthDate:I

    return v0
.end method

.method public getContactNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->ContactNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->FirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->LastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Locale:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyDate()I
    .registers 2

    .prologue
    .line 272
    iget v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->ModifyDate:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->ShippingFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->ShippingLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->ShippingName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public getZipcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Zipcode:Ljava/lang/String;

    return-object v0
.end method

.method public isNotificationEnable()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->NotificationEnable:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Address:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setBirthDate(I)V
    .registers 2

    .prologue
    .line 224
    iput p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->BirthDate:I

    .line 225
    return-void
.end method

.method public setContactNumber(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->ContactNumber:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 172
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Email:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->FirstName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Gender:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->LastName:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Locale:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setModifyDate(I)V
    .registers 2

    .prologue
    .line 208
    iput p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->ModifyDate:I

    .line 209
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Name:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setNotificationEnable(Z)V
    .registers 2

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->NotificationEnable:Z

    .line 181
    return-void
.end method

.method public setShippingFirstName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->ShippingFirstName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setShippingLastName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->ShippingLastName:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setShippingName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->ShippingName:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->UserId:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setZipcode(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->Zipcode:Ljava/lang/String;

    .line 213
    return-void
.end method

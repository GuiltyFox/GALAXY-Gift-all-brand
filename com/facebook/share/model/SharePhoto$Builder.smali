.class public final Lcom/facebook/share/model/SharePhoto$Builder;
.super Lcom/facebook/share/model/ShareMedia$Builder;
.source "SharePhoto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareMedia$Builder",
        "<",
        "Lcom/facebook/share/model/SharePhoto;",
        "Lcom/facebook/share/model/SharePhoto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private caption:Ljava/lang/String;

.field private imageUrl:Landroid/net/Uri;

.field private userGenerated:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/facebook/share/model/ShareMedia$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/SharePhoto$Builder;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/SharePhoto$Builder;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/SharePhoto$Builder;)Z
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->userGenerated:Z

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/SharePhoto$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public static readListFrom(Landroid/os/Parcel;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    sget-object v1, Lcom/facebook/share/model/SharePhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 216
    return-object v0
.end method

.method public static writeListTo(Landroid/os/Parcel;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .line 208
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 210
    :cond_19
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 211
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/SharePhoto;
    .registers 3

    .prologue
    .line 183
    new-instance v0, Lcom/facebook/share/model/SharePhoto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/SharePhoto;-><init>(Lcom/facebook/share/model/SharePhoto$Builder;Lcom/facebook/share/model/SharePhoto$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    return-object v0
.end method

.method getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getImageUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;
    .registers 3

    .prologue
    .line 121
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 121
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 3

    .prologue
    .line 201
    const-class v0, Lcom/facebook/share/model/SharePhoto;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .line 201
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 4

    .prologue
    .line 188
    if-nez p1, :cond_3

    .line 195
    :goto_2
    return-object p0

    .line 191
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareMedia$Builder;->readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto$Builder;

    .line 192
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getUserGenerated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setUserGenerated(Z)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setCaption(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 134
    return-object p0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 2

    .prologue
    .line 167
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->caption:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->imageUrl:Landroid/net/Uri;

    .line 145
    return-object p0
.end method

.method public setUserGenerated(Z)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 2

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->userGenerated:Z

    .line 156
    return-object p0
.end method

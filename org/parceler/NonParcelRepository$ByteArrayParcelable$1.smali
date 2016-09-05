.class final Lorg/parceler/NonParcelRepository$ByteArrayParcelable$1;
.super Lorg/parceler/converter/NullableParcelConverter;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository$ByteArrayParcelable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/converter/NullableParcelConverter",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 984
    invoke-direct {p0}, Lorg/parceler/converter/NullableParcelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 984
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ByteArrayParcelable$1;->a([BLandroid/os/Parcel;)V

    return-void
.end method

.method public a([BLandroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 993
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 994
    return-void
.end method

.method public a(Landroid/os/Parcel;)[B
    .registers 3

    .prologue
    .line 988
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 984
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$ByteArrayParcelable$1;->a(Landroid/os/Parcel;)[B

    move-result-object v0

    return-object v0
.end method

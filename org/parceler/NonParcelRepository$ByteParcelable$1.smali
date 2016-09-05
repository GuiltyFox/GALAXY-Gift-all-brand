.class final Lorg/parceler/NonParcelRepository$ByteParcelable$1;
.super Lorg/parceler/converter/NullableParcelConverter;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository$ByteParcelable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/converter/NullableParcelConverter",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 904
    invoke-direct {p0}, Lorg/parceler/converter/NullableParcelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ljava/lang/Byte;
    .registers 3

    .prologue
    .line 908
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Byte;Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 913
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 914
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 904
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ByteParcelable$1;->a(Ljava/lang/Byte;Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic b(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 904
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$ByteParcelable$1;->a(Landroid/os/Parcel;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

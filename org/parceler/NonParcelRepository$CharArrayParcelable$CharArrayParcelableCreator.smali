.class final Lorg/parceler/NonParcelRepository$CharArrayParcelable$CharArrayParcelableCreator;
.super Ljava/lang/Object;
.source "NonParcelRepository.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/parceler/NonParcelRepository$CharArrayParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 1106
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$CharArrayParcelable$CharArrayParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$CharArrayParcelable;
    .registers 3

    .prologue
    .line 1110
    new-instance v0, Lorg/parceler/NonParcelRepository$CharArrayParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$CharArrayParcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lorg/parceler/NonParcelRepository$CharArrayParcelable;
    .registers 3

    .prologue
    .line 1115
    new-array v0, p1, [Lorg/parceler/NonParcelRepository$CharArrayParcelable;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1106
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$CharArrayParcelable$CharArrayParcelableCreator;->a(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$CharArrayParcelable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1106
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$CharArrayParcelable$CharArrayParcelableCreator;->a(I)[Lorg/parceler/NonParcelRepository$CharArrayParcelable;

    move-result-object v0

    return-object v0
.end method

.class final Lorg/parceler/NonParcelRepository$StringParcelable$StringParcelableCreator;
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
        "Lorg/parceler/NonParcelRepository$StringParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 1191
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$StringParcelable$StringParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$StringParcelable;
    .registers 4

    .prologue
    .line 1195
    new-instance v0, Lorg/parceler/NonParcelRepository$StringParcelable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/parceler/NonParcelRepository$StringParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/NonParcelRepository$1;)V

    return-object v0
.end method

.method public a(I)[Lorg/parceler/NonParcelRepository$StringParcelable;
    .registers 3

    .prologue
    .line 1200
    new-array v0, p1, [Lorg/parceler/NonParcelRepository$StringParcelable;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1191
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$StringParcelable$StringParcelableCreator;->a(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$StringParcelable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1191
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$StringParcelable$StringParcelableCreator;->a(I)[Lorg/parceler/NonParcelRepository$StringParcelable;

    move-result-object v0

    return-object v0
.end method

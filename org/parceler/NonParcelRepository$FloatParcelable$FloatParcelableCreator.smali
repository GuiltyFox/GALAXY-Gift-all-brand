.class final Lorg/parceler/NonParcelRepository$FloatParcelable$FloatParcelableCreator;
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
        "Lorg/parceler/NonParcelRepository$FloatParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 888
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$FloatParcelable$FloatParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$FloatParcelable;
    .registers 3

    .prologue
    .line 892
    new-instance v0, Lorg/parceler/NonParcelRepository$FloatParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$FloatParcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lorg/parceler/NonParcelRepository$FloatParcelable;
    .registers 3

    .prologue
    .line 897
    new-array v0, p1, [Lorg/parceler/NonParcelRepository$FloatParcelable;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 888
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$FloatParcelable$FloatParcelableCreator;->a(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$FloatParcelable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 888
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$FloatParcelable$FloatParcelableCreator;->a(I)[Lorg/parceler/NonParcelRepository$FloatParcelable;

    move-result-object v0

    return-object v0
.end method

.class Lorg/parceler/NonParcelRepository$FloatParcelableFactory;
.super Ljava/lang/Object;
.source "NonParcelRepository.java"

# interfaces
.implements Lorg/parceler/Parcels$ParcelableFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/parceler/Parcels$ParcelableFactory",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 244
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$FloatParcelableFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 248
    new-instance v0, Lorg/parceler/NonParcelRepository$FloatParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$FloatParcelable;-><init>(Ljava/lang/Float;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 244
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$FloatParcelableFactory;->a(Ljava/lang/Float;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

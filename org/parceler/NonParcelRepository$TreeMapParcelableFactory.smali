.class Lorg/parceler/NonParcelRepository$TreeMapParcelableFactory;
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
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 196
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$TreeMapParcelableFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 196
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$TreeMapParcelableFactory;->a(Ljava/util/Map;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 200
    new-instance v0, Lorg/parceler/NonParcelRepository$TreeMapParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$TreeMapParcelable;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

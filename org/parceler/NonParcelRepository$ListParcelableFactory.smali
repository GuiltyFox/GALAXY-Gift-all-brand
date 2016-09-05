.class Lorg/parceler/NonParcelRepository$ListParcelableFactory;
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
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$ListParcelableFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 76
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$ListParcelableFactory;->a(Ljava/util/List;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 80
    new-instance v0, Lorg/parceler/NonParcelRepository$ListParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$ListParcelable;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.class Lorg/parceler/NonParcelRepository$LongParcelableFactory;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 228
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$LongParcelableFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 232
    new-instance v0, Lorg/parceler/NonParcelRepository$LongParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$LongParcelable;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 228
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$LongParcelableFactory;->a(Ljava/lang/Long;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

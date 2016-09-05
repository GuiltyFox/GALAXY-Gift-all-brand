.class Lorg/parceler/NonParcelRepository$CharArrayParcelableFactory;
.super Ljava/lang/Object;
.source "NonParcelRepository.java"

# interfaces
.implements Lorg/parceler/Parcels$ParcelableFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/parceler/Parcels$ParcelableFactory",
        "<[C>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$CharArrayParcelableFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 108
    check-cast p1, [C

    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$CharArrayParcelableFactory;->a([C)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public a([C)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 112
    new-instance v0, Lorg/parceler/NonParcelRepository$CharArrayParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$CharArrayParcelable;-><init>([C)V

    return-object v0
.end method

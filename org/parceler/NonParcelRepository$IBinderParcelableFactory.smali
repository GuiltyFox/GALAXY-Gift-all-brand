.class Lorg/parceler/NonParcelRepository$IBinderParcelableFactory;
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
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$IBinderParcelableFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 128
    new-instance v0, Lorg/parceler/NonParcelRepository$IBinderParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$IBinderParcelable;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 124
    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$IBinderParcelableFactory;->a(Landroid/os/IBinder;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

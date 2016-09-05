.class public final Lorg/parceler/Parcels;
.super Ljava/lang/Object;
.source "Parcels.java"


# static fields
.field private static final a:Lorg/parceler/Parcels$ParcelCodeRepository;

.field private static final b:Lorg/parceler/Parcels$NullParcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    new-instance v0, Lorg/parceler/Parcels$ParcelCodeRepository;

    invoke-direct {v0}, Lorg/parceler/Parcels$ParcelCodeRepository;-><init>()V

    sput-object v0, Lorg/parceler/Parcels;->a:Lorg/parceler/Parcels$ParcelCodeRepository;

    .line 38
    new-instance v0, Lorg/parceler/Parcels$NullParcelable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/Parcels$NullParcelable;-><init>(Lorg/parceler/Parcels$1;)V

    sput-object v0, Lorg/parceler/Parcels;->b:Lorg/parceler/Parcels$NullParcelable;

    .line 41
    sget-object v0, Lorg/parceler/Parcels;->a:Lorg/parceler/Parcels$ParcelCodeRepository;

    invoke-static {}, Lorg/parceler/NonParcelRepository;->a()Lorg/parceler/NonParcelRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/parceler/Parcels$ParcelCodeRepository;->a(Lorg/parceler/Repository;)V

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 82
    if-nez p1, :cond_5

    .line 83
    sget-object v0, Lorg/parceler/Parcels;->b:Lorg/parceler/Parcels$NullParcelable;

    .line 87
    :goto_4
    return-object v0

    .line 85
    :cond_5
    sget-object v0, Lorg/parceler/Parcels;->a:Lorg/parceler/Parcels$ParcelCodeRepository;

    invoke-virtual {v0, p0}, Lorg/parceler/Parcels$ParcelCodeRepository;->a(Ljava/lang/Class;)Lorg/parceler/Parcels$ParcelableFactory;

    move-result-object v0

    .line 87
    invoke-interface {v0, p1}, Lorg/parceler/Parcels$ParcelableFactory;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 66
    if-nez p0, :cond_5

    .line 67
    sget-object v0, Lorg/parceler/Parcels;->b:Lorg/parceler/Parcels$NullParcelable;

    .line 69
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/parceler/Parcels;->a(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(Landroid/os/Parcelable;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 100
    if-nez p0, :cond_4

    .line 101
    const/4 v0, 0x0

    .line 104
    :goto_3
    return-object v0

    .line 103
    :cond_4
    check-cast p0, Lorg/parceler/ParcelWrapper;

    .line 104
    invoke-interface {p0}, Lorg/parceler/ParcelWrapper;->getParcel()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

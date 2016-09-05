.class final Lorg/parceler/Parcels$NullParcelable$NullParcelableCreator;
.super Ljava/lang/Object;
.source "Parcels.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/parceler/Parcels$NullParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/Parcels$1;)V
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/parceler/Parcels$NullParcelable$NullParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lorg/parceler/Parcels$NullParcelable;
    .registers 4

    .prologue
    .line 133
    new-instance v0, Lorg/parceler/Parcels$NullParcelable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/parceler/Parcels$NullParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/Parcels$1;)V

    return-object v0
.end method

.method public a(I)[Lorg/parceler/Parcels$NullParcelable;
    .registers 3

    .prologue
    .line 138
    new-array v0, p1, [Lorg/parceler/Parcels$NullParcelable;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lorg/parceler/Parcels$NullParcelable$NullParcelableCreator;->a(Landroid/os/Parcel;)Lorg/parceler/Parcels$NullParcelable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lorg/parceler/Parcels$NullParcelable$NullParcelableCreator;->a(I)[Lorg/parceler/Parcels$NullParcelable;

    move-result-object v0

    return-object v0
.end method

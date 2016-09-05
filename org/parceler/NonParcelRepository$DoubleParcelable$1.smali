.class final Lorg/parceler/NonParcelRepository$DoubleParcelable$1;
.super Lorg/parceler/converter/NullableParcelConverter;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository$DoubleParcelable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/converter/NullableParcelConverter",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 824
    invoke-direct {p0}, Lorg/parceler/converter/NullableParcelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ljava/lang/Double;
    .registers 4

    .prologue
    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Double;Landroid/os/Parcel;)V
    .registers 5

    .prologue
    .line 833
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 834
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 824
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lorg/parceler/NonParcelRepository$DoubleParcelable$1;->a(Ljava/lang/Double;Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic b(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 824
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$DoubleParcelable$1;->a(Landroid/os/Parcel;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

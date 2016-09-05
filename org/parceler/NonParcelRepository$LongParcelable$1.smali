.class final Lorg/parceler/NonParcelRepository$LongParcelable$1;
.super Lorg/parceler/converter/NullableParcelConverter;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository$LongParcelable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/converter/NullableParcelConverter",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 784
    invoke-direct {p0}, Lorg/parceler/converter/NullableParcelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ljava/lang/Long;
    .registers 4

    .prologue
    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Long;Landroid/os/Parcel;)V
    .registers 5

    .prologue
    .line 793
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 794
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 784
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/parceler/NonParcelRepository$LongParcelable$1;->a(Ljava/lang/Long;Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic b(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 784
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$LongParcelable$1;->a(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

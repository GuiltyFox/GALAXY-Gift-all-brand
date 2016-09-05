.class final Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable$1;
.super Lorg/parceler/converter/NullableParcelConverter;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/converter/NullableParcelConverter",
        "<",
        "Landroid/util/SparseBooleanArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 704
    invoke-direct {p0}, Lorg/parceler/converter/NullableParcelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/util/SparseBooleanArray;
    .registers 3

    .prologue
    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/util/SparseBooleanArray;Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 713
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 714
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 704
    check-cast p1, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable$1;->a(Landroid/util/SparseBooleanArray;Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic b(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable$1;->a(Landroid/os/Parcel;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

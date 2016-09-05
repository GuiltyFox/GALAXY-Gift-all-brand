.class final Lorg/parceler/NonParcelRepository$CharacterParcelable$1;
.super Lorg/parceler/converter/NullableParcelConverter;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository$CharacterParcelable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/converter/NullableParcelConverter",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1122
    invoke-direct {p0}, Lorg/parceler/converter/NullableParcelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ljava/lang/Character;
    .registers 4

    .prologue
    .line 1126
    invoke-virtual {p1}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Character;Landroid/os/Parcel;)V
    .registers 6

    .prologue
    .line 1131
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 1132
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 1122
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Lorg/parceler/NonParcelRepository$CharacterParcelable$1;->a(Ljava/lang/Character;Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic b(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1122
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$CharacterParcelable$1;->a(Landroid/os/Parcel;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

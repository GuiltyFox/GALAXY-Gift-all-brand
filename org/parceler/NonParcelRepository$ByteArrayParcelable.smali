.class public final Lorg/parceler/NonParcelRepository$ByteArrayParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<[B>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$ByteArrayParcelable$ByteArrayParcelableCreator;

.field private static final a:Lorg/parceler/converter/NullableParcelConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/parceler/converter/NullableParcelConverter",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 984
    new-instance v0, Lorg/parceler/NonParcelRepository$ByteArrayParcelable$1;

    invoke-direct {v0}, Lorg/parceler/NonParcelRepository$ByteArrayParcelable$1;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$ByteArrayParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    .line 1006
    new-instance v0, Lorg/parceler/NonParcelRepository$ByteArrayParcelable$ByteArrayParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$ByteArrayParcelable$ByteArrayParcelableCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$ByteArrayParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$ByteArrayParcelable$ByteArrayParcelableCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 998
    sget-object v0, Lorg/parceler/NonParcelRepository$ByteArrayParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 999
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .prologue
    .line 1002
    sget-object v0, Lorg/parceler/NonParcelRepository$ByteArrayParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 1003
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 982
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 982
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

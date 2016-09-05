.class public final Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<",
        "Landroid/util/SparseBooleanArray;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable$SparseBooleanArrayCreator;

.field private static final a:Lorg/parceler/converter/NullableParcelConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/parceler/converter/NullableParcelConverter",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 704
    new-instance v0, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable$1;

    invoke-direct {v0}, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable$1;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    .line 726
    new-instance v0, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable$SparseBooleanArrayCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable$SparseBooleanArrayCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable$SparseBooleanArrayCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 718
    sget-object v0, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 719
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .registers 4

    .prologue
    .line 722
    sget-object v0, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 723
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 702
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 702
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

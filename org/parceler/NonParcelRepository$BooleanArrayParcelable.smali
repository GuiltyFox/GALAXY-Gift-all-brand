.class public final Lorg/parceler/NonParcelRepository$BooleanArrayParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BooleanArrayParcelable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/parceler/NonParcelRepository$BooleanArrayParcelable$BooleanArrayParcelableCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<[Z>;"
    }
.end annotation


# static fields
.field private static final CONVERTER:Lorg/parceler/converter/BooleanArrayParcelConverter;

.field public static final CREATOR:Lorg/parceler/NonParcelRepository$BooleanArrayParcelable$BooleanArrayParcelableCreator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1024
    new-instance v0, Lorg/parceler/converter/BooleanArrayParcelConverter;

    invoke-direct {v0}, Lorg/parceler/converter/BooleanArrayParcelConverter;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$BooleanArrayParcelable;->CONVERTER:Lorg/parceler/converter/BooleanArrayParcelConverter;

    .line 1035
    new-instance v0, Lorg/parceler/NonParcelRepository$BooleanArrayParcelable$BooleanArrayParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$BooleanArrayParcelable$BooleanArrayParcelableCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$BooleanArrayParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$BooleanArrayParcelable$BooleanArrayParcelableCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1027
    sget-object v0, Lorg/parceler/NonParcelRepository$BooleanArrayParcelable;->CONVERTER:Lorg/parceler/converter/BooleanArrayParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 1028
    return-void
.end method

.method public constructor <init>([Z)V
    .registers 4
    .param p1, "value"    # [Z

    .prologue
    .line 1031
    sget-object v0, Lorg/parceler/NonParcelRepository$BooleanArrayParcelable;->CONVERTER:Lorg/parceler/converter/BooleanArrayParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 1032
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 1022
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 1022
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
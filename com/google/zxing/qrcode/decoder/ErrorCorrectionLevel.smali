.class public final enum Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
.super Ljava/lang/Enum;
.source "ErrorCorrectionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum b:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum c:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private static final e:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private static final synthetic g:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string/jumbo v1, "L"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 30
    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string/jumbo v1, "M"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->b:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 32
    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string/jumbo v1, "Q"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->c:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 34
    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string/jumbo v1, "H"

    invoke-direct {v0, v1, v5, v4}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 25
    new-array v0, v6, [Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->b:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->c:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->g:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 36
    new-array v0, v6, [Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->b:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->c:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->e:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->f:I

    .line 42
    return-void
.end method

.method public static a(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .registers 2

    .prologue
    .line 53
    if-ltz p0, :cond_7

    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->e:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    array-length v0, v0

    if-lt p0, v0, :cond_d

    .line 54
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 56
    :cond_d
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->e:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .registers 2

    .prologue
    .line 25
    const-class v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->g:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->f:I

    return v0
.end method
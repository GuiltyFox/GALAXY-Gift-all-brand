.class final enum Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
.super Ljava/lang/Enum;
.source "BarcodeView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field public static final enum b:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field public static final enum c:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field private static final synthetic d:[Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 33
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const-string/jumbo v1, "SINGLE"

    invoke-direct {v0, v1, v3}, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->b:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 34
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const-string/jumbo v1, "CONTINUOUS"

    invoke-direct {v0, v1, v4}, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->c:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->b:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->c:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->d:[Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .registers 2

    .prologue
    .line 31
    const-class v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    return-object v0
.end method

.method public static values()[Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->d:[Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    invoke-virtual {v0}, [Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    return-object v0
.end method

.class public final Lcom/google/zxing/pdf417/PDF417ResultMetadata;
.super Ljava/lang/Object;
.source "PDF417ResultMetadata.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:[I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->a:I

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->d:Z

    .line 59
    return-void
.end method

.method public a([I)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->c:[I

    .line 51
    return-void
.end method

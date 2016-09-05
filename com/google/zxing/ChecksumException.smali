.class public final Lcom/google/zxing/ChecksumException;
.super Lcom/google/zxing/ReaderException;
.source "ChecksumException.java"


# static fields
.field private static final b:Lcom/google/zxing/ChecksumException;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/zxing/ChecksumException;

    invoke-direct {v0}, Lcom/google/zxing/ChecksumException;-><init>()V

    sput-object v0, Lcom/google/zxing/ChecksumException;->b:Lcom/google/zxing/ChecksumException;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/zxing/ReaderException;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Lcom/google/zxing/ChecksumException;
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/google/zxing/ChecksumException;->a:Z

    if-eqz v0, :cond_a

    .line 39
    new-instance v0, Lcom/google/zxing/ChecksumException;

    invoke-direct {v0}, Lcom/google/zxing/ChecksumException;-><init>()V

    .line 41
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/google/zxing/ChecksumException;->b:Lcom/google/zxing/ChecksumException;

    goto :goto_9
.end method

.class public final enum Lcom/bitmapfun/util/AsyncTask$Status;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitmapfun/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bitmapfun/util/AsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bitmapfun/util/AsyncTask$Status;

.field public static final enum FINISHED:Lcom/bitmapfun/util/AsyncTask$Status;

.field public static final enum PENDING:Lcom/bitmapfun/util/AsyncTask$Status;

.field public static final enum RUNNING:Lcom/bitmapfun/util/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    new-instance v0, Lcom/bitmapfun/util/AsyncTask$Status;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/bitmapfun/util/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bitmapfun/util/AsyncTask$Status;->PENDING:Lcom/bitmapfun/util/AsyncTask$Status;

    .line 286
    new-instance v0, Lcom/bitmapfun/util/AsyncTask$Status;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/bitmapfun/util/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bitmapfun/util/AsyncTask$Status;->RUNNING:Lcom/bitmapfun/util/AsyncTask$Status;

    .line 290
    new-instance v0, Lcom/bitmapfun/util/AsyncTask$Status;

    const-string/jumbo v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/bitmapfun/util/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bitmapfun/util/AsyncTask$Status;->FINISHED:Lcom/bitmapfun/util/AsyncTask$Status;

    .line 278
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bitmapfun/util/AsyncTask$Status;

    sget-object v1, Lcom/bitmapfun/util/AsyncTask$Status;->PENDING:Lcom/bitmapfun/util/AsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bitmapfun/util/AsyncTask$Status;->RUNNING:Lcom/bitmapfun/util/AsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bitmapfun/util/AsyncTask$Status;->FINISHED:Lcom/bitmapfun/util/AsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bitmapfun/util/AsyncTask$Status;->$VALUES:[Lcom/bitmapfun/util/AsyncTask$Status;

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
    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bitmapfun/util/AsyncTask$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 278
    const-class v0, Lcom/bitmapfun/util/AsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bitmapfun/util/AsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/bitmapfun/util/AsyncTask$Status;
    .registers 1

    .prologue
    .line 278
    sget-object v0, Lcom/bitmapfun/util/AsyncTask$Status;->$VALUES:[Lcom/bitmapfun/util/AsyncTask$Status;

    invoke-virtual {v0}, [Lcom/bitmapfun/util/AsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bitmapfun/util/AsyncTask$Status;

    return-object v0
.end method

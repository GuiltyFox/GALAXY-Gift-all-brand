.class Lcom/samsung/privilege/util/DialogUtil$21;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil;->showDialogNFC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityContext:Landroid/app/Activity;

.field private final synthetic val$tvStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$21;->val$activityContext:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogUtil$21;->val$tvStatus:Landroid/widget/TextView;

    .line 2193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2196
    const/4 v0, 0x0

    .line 2197
    .local v0, "count":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogUtil$21;->val$activityContext:Landroid/app/Activity;

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/samsung/privilege/util/DialogUtil;->gIsFinish:Z

    if-eqz v2, :cond_a

    .line 2216
    :cond_9
    return-void

    .line 2198
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 2200
    const/16 v2, 0xa

    if-le v0, v2, :cond_1f

    .line 2201
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/privilege/util/DialogUtil;->gIsFinish:Z

    .line 2203
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogUtil$21;->val$activityContext:Landroid/app/Activity;

    new-instance v3, Lcom/samsung/privilege/util/DialogUtil$21$1;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogUtil$21;->val$tvStatus:Landroid/widget/TextView;

    invoke-direct {v3, p0, v4}, Lcom/samsung/privilege/util/DialogUtil$21$1;-><init>(Lcom/samsung/privilege/util/DialogUtil$21;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2211
    :cond_1f
    const-wide/16 v2, 0x3e8

    :try_start_21
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_1

    .line 2212
    :catch_25
    move-exception v1

    .line 2213
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "DialogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(InterruptedException|showDialogNfc):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

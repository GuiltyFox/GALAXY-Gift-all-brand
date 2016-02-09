.class Lcom/samsung/privilege/util/DialogUtil$19;
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
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$19;->val$activityContext:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogUtil$19;->val$tvStatus:Landroid/widget/TextView;

    .line 2140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2143
    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/privilege/util/DialogUtil;->gIsFinish:Z

    .line 2144
    const/4 v1, 0x0

    .line 2145
    .local v1, "intDotCount":I
    :goto_4
    iget-object v3, p0, Lcom/samsung/privilege/util/DialogUtil$19;->val$activityContext:Landroid/app/Activity;

    if-eqz v3, :cond_c

    sget-boolean v3, Lcom/samsung/privilege/util/DialogUtil;->gIsFinish:Z

    if-eqz v3, :cond_d

    .line 2172
    :cond_c
    return-void

    .line 2146
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 2147
    const/4 v3, 0x5

    if-le v1, v3, :cond_13

    .line 2148
    const/4 v1, 0x0

    .line 2150
    :cond_13
    move v2, v1

    .line 2153
    .local v2, "intDotCountFinal":I
    :try_start_14
    iget-object v3, p0, Lcom/samsung/privilege/util/DialogUtil$19;->val$activityContext:Landroid/app/Activity;

    new-instance v4, Lcom/samsung/privilege/util/DialogUtil$19$1;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$19;->val$tvStatus:Landroid/widget/TextView;

    invoke-direct {v4, p0, v2, v5}, Lcom/samsung/privilege/util/DialogUtil$19$1;-><init>(Lcom/samsung/privilege/util/DialogUtil$19;ILandroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_40

    .line 2167
    :goto_20
    const-wide/16 v3, 0x1f4

    :try_start_22
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_4

    .line 2168
    :catch_26
    move-exception v0

    .line 2169
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "DialogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(InterruptedException|showDialogNfc):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2162
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_40
    move-exception v0

    .line 2163
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DialogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|showDialogNfc):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

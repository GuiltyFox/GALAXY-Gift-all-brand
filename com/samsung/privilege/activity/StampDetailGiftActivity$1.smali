.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 184
    const/4 v0, 0x0

    .line 185
    :try_start_2
    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v3, 0x7f1001fd

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_14

    move v0, v1

    .line 189
    :cond_14
    if-ne v0, v1, :cond_25

    .line 190
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onResume -> refreshStampData"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    .line 196
    :cond_25
    :goto_25
    return-void

    .line 193
    :catch_26
    move-exception v0

    goto :goto_25
.end method

.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const v2, 0x7f1001fc

    .line 337
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v1, 0x7f1001fb

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 338
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3$1;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    :goto_22
    return-void

    .line 346
    :cond_23
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_22
.end method

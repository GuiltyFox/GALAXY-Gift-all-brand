.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$3$1;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;)V
    .registers 2

    .prologue
    .line 338
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3$1;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3$1;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v1, 0x7f1001fb

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 342
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3$1;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    return-void
.end method

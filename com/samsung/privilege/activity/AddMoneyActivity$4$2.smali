.class Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;
.super Ljava/lang/Object;
.source "AddMoneyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyActivity$4;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/AddMoneyActivity$4;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyActivity$4;)V
    .registers 2

    .prologue
    .line 340
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;->a:Lcom/samsung/privilege/activity/AddMoneyActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 343
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;->a:Lcom/samsung/privilege/activity/AddMoneyActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const v2, 0x1030010

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 344
    const v0, 0x7f0400c8

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 346
    const v0, 0x7f10014e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020189

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    const v0, 0x7f10045d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;->a:Lcom/samsung/privilege/activity/AddMoneyActivity$4;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const v3, 0x7f0901ac

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const v0, 0x7f10045e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;->a:Lcom/samsung/privilege/activity/AddMoneyActivity$4;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const v3, 0x7f0901ab

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    const v0, 0x7f1003c4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 351
    new-instance v2, Lcom/samsung/privilege/activity/AddMoneyActivity$4$2$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/AddMoneyActivity$4$2$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 358
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 359
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 361
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 362
    return-void
.end method

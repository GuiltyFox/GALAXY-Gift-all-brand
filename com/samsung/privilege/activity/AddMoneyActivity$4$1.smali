.class Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;
.super Ljava/lang/Object;
.source "AddMoneyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyActivity$4;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/AddMoneyActivity$4;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyActivity$4;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 295
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$4;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 298
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const v2, 0x1030010

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 299
    const v0, 0x7f0400d9

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 302
    :try_start_12
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 303
    const-string/jumbo v2, "PricePerUnit"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$4;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const v3, 0x7f0901bf

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "@PricePerUnit@"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    const v0, 0x7f100496

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3e} :catch_66

    .line 311
    :goto_3e
    const v0, 0x7f1003fb

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 312
    new-instance v2, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 320
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 321
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 323
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 324
    return-void

    .line 307
    :catch_66
    move-exception v0

    goto :goto_3e
.end method

.class Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;
.super Ljava/lang/Object;
.source "DialogChangeMobileNoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 386
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 388
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 392
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f02036b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 394
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1$1;-><init>(Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    :try_start_47
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->j:Landroid/widget/TextView;

    const-string/jumbo v2, "refcode"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5c} :catch_5d

    .line 410
    :goto_5c
    return-void

    .line 407
    :catch_5d
    move-exception v0

    goto :goto_5c
.end method

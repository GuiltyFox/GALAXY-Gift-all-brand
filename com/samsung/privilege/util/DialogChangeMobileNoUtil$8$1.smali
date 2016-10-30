.class Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;
.super Ljava/lang/Object;
.source "DialogChangeMobileNoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 247
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 249
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 253
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f02035e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 255
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1$1;-><init>(Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    :try_start_49
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8$1;->b:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;->j:Landroid/widget/TextView;

    const-string/jumbo v2, "refcode"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5e} :catch_5f

    .line 271
    :goto_5e
    return-void

    .line 268
    :catch_5f
    move-exception v0

    goto :goto_5e
.end method

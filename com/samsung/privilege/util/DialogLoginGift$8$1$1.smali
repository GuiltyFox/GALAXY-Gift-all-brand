.class Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$8$1;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/util/DialogLoginGift$8$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$8$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 409
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 411
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 412
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 415
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8;->f:Landroid/widget/RelativeLayout;

    const v1, 0x7f020355

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 417
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1$1;-><init>(Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 425
    :try_start_44
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$8;->g:Landroid/widget/TextView;

    const-string/jumbo v2, "refcode"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5b} :catch_5c

    .line 430
    :goto_5b
    return-void

    .line 427
    :catch_5c
    move-exception v0

    goto :goto_5b
.end method

.class final Lcom/samsung/privilege/util/DialogLoginGift$8;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Landroid/widget/RelativeLayout;

.field final synthetic e:Landroid/widget/RelativeLayout;

.field final synthetic f:Landroid/widget/RelativeLayout;

.field final synthetic g:Landroid/widget/TextView;

.field final synthetic h:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;Landroid/os/Handler;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .registers 9

    .prologue
    .line 370
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->d:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->e:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->f:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->g:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->h:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 372
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_1f

    .line 373
    const-string/jumbo v0, "Please enter valid telephone number!"

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 472
    :cond_1e
    :goto_1e
    return-void

    .line 377
    :cond_1f
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->d()Z

    move-result v0

    if-eq v0, v6, :cond_1e

    .line 378
    invoke-static {v6}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Z)Z

    .line 380
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 381
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/auth/otp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&contact_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 387
    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v1

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&uuid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    const v4, 0x7f090282

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 392
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 393
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->e:Landroid/widget/RelativeLayout;

    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 394
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->f:Landroid/widget/RelativeLayout;

    const v2, 0x7f020360

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 395
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->g:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 398
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    .line 399
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 400
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 401
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    .line 402
    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 403
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift$8$1;-><init>(Lcom/samsung/privilege/util/DialogLoginGift$8;J)V

    .line 404
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_1e
.end method

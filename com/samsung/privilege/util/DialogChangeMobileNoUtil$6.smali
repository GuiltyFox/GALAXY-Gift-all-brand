.class final Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;
.super Ljava/lang/Object;
.source "DialogChangeMobileNoUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Landroid/app/Dialog;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 208
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;->c:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 210
    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    invoke-direct {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;-><init>()V

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;->a:Landroid/content/Context;

    .line 211
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Landroid/content/Context;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    const-string/jumbo v1, "PERMISSION RECEIVE_SMS and READ_SMS Denied!"

    .line 212
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.RECEIVE_SMS"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    .line 213
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a([Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6$1;-><init>(Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;)V

    .line 214
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Lcom/samsung/privilege/util/AddOnPermissions;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a()Lcom/samsung/privilege/util/RxPermissionUtils;

    .line 233
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;->d:Ljava/lang/String;

    const-string/jumbo v1, "Click OTP"

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;->e:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    return-void
.end method

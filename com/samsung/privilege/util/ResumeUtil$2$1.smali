.class Lcom/samsung/privilege/util/ResumeUtil$2$1;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/ResumeUtil$2;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/util/ResumeUtil$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/ResumeUtil$2;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 265
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$2$1;->b:Lcom/samsung/privilege/util/ResumeUtil$2;

    iput-object p2, p0, Lcom/samsung/privilege/util/ResumeUtil$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$2$1;->b:Lcom/samsung/privilege/util/ResumeUtil$2;

    iget-object v0, v0, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2$1;->b:Lcom/samsung/privilege/util/ResumeUtil$2;

    iget-object v1, v1, Lcom/samsung/privilege/util/ResumeUtil$2;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;)V

    .line 269
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$2$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$2$1;->a:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 270
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$2$1;->b:Lcom/samsung/privilege/util/ResumeUtil$2;

    iget-object v0, v0, Lcom/samsung/privilege/util/ResumeUtil$2;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    :cond_23
    return-void
.end method

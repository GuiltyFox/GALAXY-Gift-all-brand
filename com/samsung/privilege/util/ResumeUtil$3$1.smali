.class Lcom/samsung/privilege/util/ResumeUtil$3$1;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/ResumeUtil$3;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/ResumeUtil$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/ResumeUtil$3;)V
    .registers 2

    .prologue
    .line 348
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$3$1;->a:Lcom/samsung/privilege/util/ResumeUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$3$1;->a:Lcom/samsung/privilege/util/ResumeUtil$3;

    iget-object v0, v0, Lcom/samsung/privilege/util/ResumeUtil$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$3$1;->a:Lcom/samsung/privilege/util/ResumeUtil$3;

    iget-object v1, v1, Lcom/samsung/privilege/util/ResumeUtil$3;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;)V

    .line 351
    return-void
.end method

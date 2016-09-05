.class Landroid/support/v4/app/NavUtils$NavUtilsImplJB;
.super Landroid/support/v4/app/NavUtils$NavUtilsImplBase;
.source "NavUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 3

    .prologue
    .line 102
    invoke-static {p1}, Landroid/support/v4/app/NavUtilsJB;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    if-nez v0, :cond_a

    .line 104
    invoke-virtual {p0, p1}, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 106
    :cond_a
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 125
    invoke-static {p2}, Landroid/support/v4/app/NavUtilsJB;->a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_a

    .line 127
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;->a(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_a
    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 4

    .prologue
    .line 115
    invoke-static {p1, p2}, Landroid/support/v4/app/NavUtilsJB;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method b(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 3

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 120
    invoke-static {p1, p2}, Landroid/support/v4/app/NavUtilsJB;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 121
    return-void
.end method

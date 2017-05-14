.class Landroid/support/v7/app/AppCompatDelegateImplV14;
.super Landroid/support/v7/app/AppCompatDelegateImplV11;
.source "AppCompatDelegateImplV14.java"


# instance fields
.field private r:I

.field private s:Z

.field private t:Z

.field private u:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 5

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 41
    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->r:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->t:Z

    .line 51
    return-void
.end method

.method private e(I)Z
    .registers 6

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 189
    iget v0, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v0, 0x30

    .line 191
    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    const/16 v0, 0x20

    .line 195
    :goto_13
    if-eq v3, v0, :cond_38

    .line 196
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->w()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 202
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 203
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 213
    :goto_22
    const/4 v0, 0x1

    .line 219
    :goto_23
    return v0

    .line 191
    :cond_24
    const/16 v0, 0x10

    goto :goto_13

    .line 208
    :cond_27
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 209
    iget v2, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    or-int/2addr v0, v2

    iput v0, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 211
    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_22

    .line 219
    :cond_38
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private u()I
    .registers 3

    .prologue
    .line 159
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->r:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->r:I

    :goto_8
    return v0

    :cond_9
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegateImplV14;->j()I

    move-result v0

    goto :goto_8
.end method

.method private v()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->u:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-nez v0, :cond_11

    .line 224
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/TwilightManager;->a(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/support/v7/app/TwilightManager;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->u:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    .line 226
    :cond_11
    return-void
.end method

.method private w()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->s:Z

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_38

    .line 238
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 240
    :try_start_12
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->a:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->a:Landroid/content/Context;

    .line 241
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    .line 240
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 244
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_26} :catch_2d

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_2b

    .line 252
    :goto_2a
    return v0

    :cond_2b
    move v0, v1

    .line 244
    goto :goto_2a

    .line 245
    :catch_2d
    move-exception v1

    .line 248
    const-string/jumbo v2, "AppCompatDelegate"

    const-string/jumbo v3, "Exception while getting ActivityInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :cond_38
    move v0, v1

    .line 252
    goto :goto_2a
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3

    .prologue
    .line 69
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, -0x64

    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->a(Landroid/os/Bundle;)V

    .line 57
    if-eqz p1, :cond_14

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->r:I

    if-ne v0, v1, :cond_14

    .line 60
    const-string/jumbo v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->r:I

    .line 63
    :cond_14
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->c()V

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->i()Z

    .line 109
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->c(Landroid/os/Bundle;)V

    .line 166
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->r:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_11

    .line 168
    const-string/jumbo v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->r:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_11
    return-void
.end method

.method d(I)I
    .registers 3

    .prologue
    .line 145
    sparse-switch p1, :sswitch_data_10

    .line 153
    :goto_3
    return p1

    .line 147
    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->v()V

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->u:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->a()I

    move-result p1

    goto :goto_3

    .line 151
    :sswitch_e
    const/4 p1, -0x1

    goto :goto_3

    .line 145
    :sswitch_data_10
    .sparse-switch
        -0x64 -> :sswitch_e
        0x0 -> :sswitch_4
    .end sparse-switch
.end method

.method public d()V
    .registers 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->d()V

    .line 116
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->u:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_c

    .line 117
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->u:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->d()V

    .line 119
    :cond_c
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->g()V

    .line 177
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->u:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_c

    .line 178
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->u:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->d()V

    .line 180
    :cond_c
    return-void
.end method

.method public i()Z
    .registers 5

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->u()I

    move-result v1

    .line 87
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->d(I)I

    move-result v2

    .line 88
    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 89
    invoke-direct {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV14;->e(I)Z

    move-result v0

    .line 92
    :cond_10
    if-nez v1, :cond_1a

    .line 94
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->v()V

    .line 95
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->u:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->c()V

    .line 98
    :cond_1a
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->s:Z

    .line 99
    return v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->t:Z

    return v0
.end method

.class public Landroid/support/v7/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:[Ljava/lang/Object;

.field private final d:[Ljava/lang/Object;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->a:[Ljava/lang/Class;

    .line 74
    sget-object v0, Landroid/support/v7/view/SupportMenuInflater;->a:[Ljava/lang/Class;

    sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 91
    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater;->e:Landroid/content/Context;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->c:[Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->d:[Ljava/lang/Object;

    .line 94
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/SupportMenuInflater;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->e:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 220
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 226
    :cond_4
    :goto_4
    return-object p1

    .line 223
    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_4

    .line 224
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 134
    new-instance v7, Landroid/support/v7/view/SupportMenuInflater$MenuState;

    invoke-direct {v7, p0, p3}, Landroid/support/v7/view/SupportMenuInflater$MenuState;-><init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V

    .line 136
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 143
    :cond_c
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4c

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string/jumbo v2, "menu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_20
    move-object v2, v4

    move v5, v6

    move v3, v0

    move v0, v6

    .line 157
    :goto_24
    if-nez v0, :cond_ea

    .line 158
    packed-switch v3, :pswitch_data_ec

    :cond_29
    move v3, v5

    .line 208
    :goto_2a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v9, v3

    move v3, v5

    move v5, v9

    goto :goto_24

    .line 151
    :cond_32
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expecting menu, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_4c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 154
    if-ne v0, v1, :cond_c

    goto :goto_20

    .line 160
    :pswitch_53
    if-eqz v5, :cond_57

    move v3, v5

    .line 161
    goto :goto_2a

    .line 164
    :cond_57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 165
    const-string/jumbo v8, "group"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 166
    invoke-virtual {v7, p2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a(Landroid/util/AttributeSet;)V

    move v3, v5

    goto :goto_2a

    .line 167
    :cond_69
    const-string/jumbo v8, "item"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 168
    invoke-virtual {v7, p2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->b(Landroid/util/AttributeSet;)V

    move v3, v5

    goto :goto_2a

    .line 169
    :cond_77
    const-string/jumbo v8, "menu"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 171
    invoke-virtual {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->c()Landroid/view/SubMenu;

    move-result-object v3

    .line 174
    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/view/SupportMenuInflater;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    move v3, v5

    .line 175
    goto :goto_2a

    :cond_89
    move-object v2, v3

    move v3, v1

    .line 179
    goto :goto_2a

    .line 182
    :pswitch_8c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 183
    if-eqz v5, :cond_9b

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b

    move-object v2, v4

    move v3, v6

    .line 185
    goto :goto_2a

    .line 186
    :cond_9b
    const-string/jumbo v8, "group"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 187
    invoke-virtual {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a()V

    move v3, v5

    goto :goto_2a

    .line 188
    :cond_a9
    const-string/jumbo v8, "item"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d4

    .line 191
    invoke-virtual {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->d()Z

    move-result v3

    if-nez v3, :cond_29

    .line 192
    invoke-static {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a(Landroid/support/v7/view/SupportMenuInflater$MenuState;)Landroid/support/v4/view/ActionProvider;

    move-result-object v3

    if-eqz v3, :cond_ce

    invoke-static {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a(Landroid/support/v7/view/SupportMenuInflater$MenuState;)Landroid/support/v4/view/ActionProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 194
    invoke-virtual {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->c()Landroid/view/SubMenu;

    move v3, v5

    goto/16 :goto_2a

    .line 196
    :cond_ce
    invoke-virtual {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->b()V

    move v3, v5

    goto/16 :goto_2a

    .line 199
    :cond_d4
    const-string/jumbo v8, "menu"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v0, v1

    move v3, v5

    .line 200
    goto/16 :goto_2a

    .line 205
    :pswitch_e1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unexpected end of document"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_ea
    return-void

    .line 158
    nop

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_53
        :pswitch_8c
    .end packed-switch
.end method

.method static synthetic a()[Ljava/lang/Class;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Landroid/support/v7/view/SupportMenuInflater;->b:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b()[Ljava/lang/Class;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Landroid/support/v7/view/SupportMenuInflater;->a:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/view/SupportMenuInflater;)[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method private c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->f:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 214
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->f:Ljava/lang/Object;

    .line 216
    :cond_c
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/view/SupportMenuInflater;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v7/view/SupportMenuInflater;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/view/SupportMenuInflater;)[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->c:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public inflate(ILandroid/view/Menu;)V
    .registers 7

    .prologue
    .line 108
    instance-of v0, p2, Landroid/support/v4/internal/view/SupportMenu;

    if-nez v0, :cond_8

    .line 109
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    :cond_7
    :goto_7
    return-void

    .line 113
    :cond_8
    const/4 v1, 0x0

    .line 115
    :try_start_9
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 118
    invoke-direct {p0, v1, v0, p2}, Landroid/support/v7/view/SupportMenuInflater;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1a} :catch_20
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_31
    .catchall {:try_start_9 .. :try_end_1a} :catchall_2a

    .line 124
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7

    .line 119
    :catch_20
    move-exception v0

    .line 120
    :try_start_21
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2a

    .line 124
    :catchall_2a
    move-exception v0

    if-eqz v1, :cond_30

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_30
    throw v0

    .line 121
    :catch_31
    move-exception v0

    .line 122
    :try_start_32
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_2a
.end method

.class public Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;
.super Ljava/lang/Object;
.source "DialogChangeMobileNoUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/app/ProgressDialog;

.field private static c:Landroid/widget/EditText;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a:Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 1

    .prologue
    .line 43
    sput-object p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .prologue
    .line 51
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 53
    const v0, 0x7f040108

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 55
    const v0, 0x7f100586

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 56
    new-instance v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;-><init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f100571

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 66
    new-instance v2, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$2;

    invoke-direct {v2, v1}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 74
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 75
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 78
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 26

    .prologue
    .line 169
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->k(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15b

    .line 170
    new-instance v4, Landroid/app/Dialog;

    const v1, 0x1030010

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 172
    const v1, 0x7f040105

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 174
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->d:Z

    .line 176
    const v1, 0x7f100574

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 177
    const v2, 0x7f100579

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 179
    const v3, 0x7f1005df

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 180
    const v3, 0x7f100576

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/EditText;

    .line 181
    const v3, 0x7f10057e

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 182
    const v3, 0x7f10057f

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 183
    const v3, 0x7f100578

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 184
    const v3, 0x7f10057d

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    sput-object v3, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->c:Landroid/widget/EditText;

    .line 185
    const v3, 0x7f100581

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 186
    const v3, 0x7f100583

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 188
    const v3, 0x7f10057a

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    .line 189
    const v3, 0x7f10057c

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 190
    const v3, 0x7f100577

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 191
    const v3, 0x7f100582

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 192
    const v3, 0x7f100580

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 193
    const v3, 0x7f10057b

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 195
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    if-eqz p2, :cond_156

    const-string/jumbo v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_156

    .line 199
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 201
    const-string/jumbo v1, "#cccccc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 206
    :goto_dd
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$6;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$7;

    invoke-direct {v1, v15}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$7;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 248
    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$8;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 259
    new-instance v5, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;

    move-object v6, v8

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v11, p5

    move-object v12, v4

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    invoke-direct/range {v5 .. v14}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/os/Handler;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$10;

    invoke-direct {v1, v15}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$10;-><init>(Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$11;

    invoke-direct {v1, v4}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$11;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const v1, 0x7f100573

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 303
    new-instance v2, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$12;

    invoke-direct {v2, v4}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$12;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 311
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 312
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 314
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 318
    :goto_155
    return-void

    .line 203
    :cond_156
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_dd

    .line 316
    :cond_15b
    const/4 v4, 0x0

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const/4 v9, 0x0

    move-object/from16 v1, p5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v9}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    goto :goto_155
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 549
    :try_start_0
    sget-object v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    .line 550
    sget-object v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 555
    :cond_9
    :goto_9
    return-void

    .line 552
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .registers 9

    .prologue
    .line 43
    invoke-static/range {p0 .. p8}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 43
    sput-boolean p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->d:Z

    return p0
.end method

.method static synthetic b()Landroid/app/ProgressDialog;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;)V
    .registers 16

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 321
    const v0, 0x7f100574

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 322
    const v0, 0x7f100579

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 324
    const v0, 0x7f1005df

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 325
    const v0, 0x7f100576

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 326
    const v1, 0x7f100578

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 327
    const v1, 0x7f10057d

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 328
    const v1, 0x7f100581

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 329
    const v1, 0x7f100583

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 331
    const v1, 0x7f10057a

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 332
    const v1, 0x7f10057c

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 333
    const v1, 0x7f100577

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 334
    const v1, 0x7f100582

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 335
    const v1, 0x7f1005de

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 336
    const v1, 0x7f100580

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 337
    const v1, 0x7f10057b

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 339
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-gt v1, v2, :cond_a0

    .line 340
    const-string/jumbo v0, "Please enter valid telephone number!"

    invoke-static {v0, p0, p1}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 442
    :cond_9f
    :goto_9f
    return-void

    .line 344
    :cond_a0
    sget-boolean v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->d:Z

    if-eq v1, v5, :cond_9f

    .line 347
    sput-boolean v5, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->d:Z

    .line 349
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 350
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/auth/otp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?app_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&contact_number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    sget-object v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a:Ljava/lang/String;

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

    .line 358
    const-string/jumbo v1, ""

    const v2, 0x7f090282

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b:Landroid/app/ProgressDialog;

    .line 359
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 360
    const v1, 0x7f020057

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 361
    const v1, 0x7f020366

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 362
    const-string/jumbo v1, ""

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 365
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 366
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 367
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 368
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 369
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 370
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v12}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;-><init>(JLandroid/content/Context;Landroid/os/Handler;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_9f
.end method

.method public static b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .prologue
    .line 81
    new-instance v4, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v4, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 83
    const v0, 0x7f04010d

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 85
    const v0, 0x7f1001d3

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 87
    const v0, 0x7f100586

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 88
    new-instance v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;-><init>(Landroid/widget/EditText;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f100571

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 145
    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$4;

    invoke-direct {v1, v4}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f100573

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 153
    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$5;

    invoke-direct {v1, v4}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$5;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 161
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 162
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 164
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 165
    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 558
    new-instance v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$15;

    invoke-direct {v0, p1, p0}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$15;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 565
    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .registers 17

    .prologue
    .line 445
    const-string/jumbo v0, ""

    const v1, 0x7f090282

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b:Landroid/app/ProgressDialog;

    .line 448
    :try_start_12
    sget-object v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 449
    if-eqz v0, :cond_35

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 452
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_153

    .line 458
    :cond_35
    :goto_35
    invoke-static {p1}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/auth/change_authen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    sget-object v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a:Ljava/lang/String;

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

    .line 463
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 465
    const-string/jumbo v2, "device_app_id"

    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 466
    sget-object v2, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device_app_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string/jumbo v2, "contact_number"

    invoke-virtual {v1, v2, p4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 469
    sget-object v2, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contact_number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string/jumbo v2, "idcard"

    invoke-virtual {v1, v2, p5}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 472
    sget-object v2, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "idcard="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string/jumbo v2, "otp"

    invoke-virtual {v1, v2, p6}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 475
    sget-object v2, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "otp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string/jumbo v2, "refcode"

    invoke-virtual {v1, v2, p7}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 478
    sget-object v2, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 481
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 482
    invoke-virtual {v4, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v4

    sget-boolean v5, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 483
    invoke-virtual {v4, v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v4

    .line 484
    invoke-virtual {v4, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 485
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 486
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 487
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;

    move-object v4, p1

    move-object/from16 v5, p8

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;-><init>(JLandroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Landroid/os/Handler;)V

    .line 488
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 545
    return-void

    .line 454
    :catch_153
    move-exception v0

    goto/16 :goto_35
.end method

.method static synthetic c()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->c:Landroid/widget/EditText;

    return-object v0
.end method

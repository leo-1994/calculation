<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>个税计算</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
    <style>
        p {
            line-height: 2;
        }
    </style>
</head>
<body>
<div class="layui-container">
    <div class="layui-row">
        <div class="layui-col-md8 layui-col-md-offset2">
            <h1 class="h1" style="text-align: center">个税计算</h1>
            <hr>
            <form class="layui-form" action="">
                <div class="layui-form-item">
                    <label class="layui-form-label">税前收入</label>
                    <div class="layui-input-inline">
                        <input type="text" name="income" required lay-verify="required" placeholder="请输入"
                               autocomplete="off"
                               class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">五险基数</label>
                    <div class="layui-input-inline">
                        <input type="text" name="insurance_base" required lay-verify="required" placeholder="请输入"
                               autocomplete="off"
                               class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">公积金基数</label>
                    <div class="layui-input-inline">
                        <input type="text" name="fund_base" required lay-verify="required" placeholder="请输入"
                               autocomplete="off"
                               class="layui-input">
                    </div>
                    <label class="layui-form-label">缴纳比例</label>
                    <div class="layui-input-inline">
                        <input type="text" name="fund_base" required lay-verify="required" placeholder="请输入"
                               autocomplete="off"
                               class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">%</div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block" style="text-align: center">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">计算</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
            <fieldset class="layui-elem-field">
                <legend>说明</legend>
                <div class="layui-field-box">
                    <p>2011年9月1日起调整后，也就是2012年实行的7级超额累进个人所得税税率表</p>
                    <table class="layui-table">
                        <colgroup>
                            <col width="100">
                            <col width="400">
                            <col width="100">
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>级数</th>
                            <th>全月应纳税所得额（含税级距）</th>
                            <th>税率(%)</th>
                            <th>速算扣除数</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>不超过1,500元</td>
                            <td>3</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>超过1,500元至4,500元的部分</td>
                            <td>10</td>
                            <td>105</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>超过4,500元至9,000元的部分</td>
                            <td>20</td>
                            <td>555</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>超过9,000元至35,000元的部分</td>
                            <td>25</td>
                            <td>1,,005</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>超过35,000元至55,000元的部分</td>
                            <td>30</td>
                            <td>2,755</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>超过55,000元至80,000元的部分</td>
                            <td>35</td>
                            <td>5,505</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>超过80,000元的部分</td>
                            <td>45</td>
                            <td>13,505</td>
                        </tr>
                        </tbody>
                    </table>
                    <p>应纳个人所得税税额= 应纳税所得额× 适用税率- 速算扣除数</p>
                    <p>扣除标准3500元/月（2011年9月1日起正式执行）（工资、薪金所得适用）</p>
                    <p>个税免征额3500元 　（工资薪金所得适用）</p>
                </div>
            </fieldset>
            <div>

            </div>
        </div>
    </div>
</div>
</body>
<script>
    //Demo
    layui.use('form', function () {
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>
</html>